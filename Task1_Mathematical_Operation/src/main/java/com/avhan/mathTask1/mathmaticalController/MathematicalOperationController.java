package com.avhan.mathTask1.mathmaticalController;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/operation")
public class MathematicalOperationController 
{	
	//Addition Operation
	@GetMapping("/add/{a}/{b}")
	public ResponseEntity<Object> add(@PathVariable("a") double var1, @PathVariable("b") double var2) {
		return new ResponseEntity<Object>("Addition : " + var1 + " + " + var2 + " = " + (var1 + var2), HttpStatus.OK);
	}

	//Multiplication Operation
	@GetMapping("/multiply/{a}/{b}")
	public ResponseEntity<Object> multiply(@PathVariable("a") double var1, @PathVariable("b") double var2) {
		return new ResponseEntity<Object>("Multiplication : " + var1 + " * " + var2 + " = " + (var1 * var2),
				HttpStatus.OK);
	}

	//Subtraction Operation
	@GetMapping("/subtract/{a}/{b}")
	public ResponseEntity<Object> subtract(@PathVariable("a") double var1, @PathVariable("b") double var2) {
		return new ResponseEntity<Object>("Subtraction : " + var1 + "-" + var2 + " = " + (var1 - var2), HttpStatus.OK);
	}

	//Division Operation
	@GetMapping("/divide/{a}/{b}")
	public ResponseEntity<Object> divide(@PathVariable("a") double var1, @PathVariable("b") double var2) {
		if (var2 == 0) {
			return new ResponseEntity<Object>("No number cannot be divided by 0", HttpStatus.OK);
		} else {
			return new ResponseEntity<Object>("Divition : " + var1 + "/" + var2 + " = " + (var1 / var2), HttpStatus.OK);
		}
	}

	//Finding Factorial 
	@GetMapping("/factorial")
	public ResponseEntity<Object> factorial(@RequestParam("a") int var1) {
		if (var1 < 0) {
			return new ResponseEntity<Object>("Factorial is not defined for negative numbers.", HttpStatus.BAD_REQUEST);
		} else {
			int fact = 1;
			for (int i = 1; i <= var1; i++) {
				fact = fact * i;
			}
			return new ResponseEntity<Object>("Factorial of " + var1 + " is " + fact, HttpStatus.OK);
		}
	}

	//Is Prime Number
	@GetMapping("/isPrime")
	public boolean isPrime(@RequestParam("a") double var1) {
		 if (var1 <= 1) {
	            return false;
	        }
	        for (int i = 2; i <= Math.sqrt(var1); i++) {
	            if (var1 % i == 0) {
	                return false;
	            }
	        }
	        return true;
	    }
}
